using System;
using BloomInventories.Models;
using MySql.Data.MySqlClient;

namespace BloomInventories.Services
{
	public class Database
	{
		//database configuration to connect to localhost 
		private static string serverConfiguration = @"server=localhost;port=8889;userid=root;password=root;database=bloom";

		//testing if our database connection is working
		public static string GetVersion()
		{
			//calling the NuGet package that we installed
			//creating a new connection to our database through using our config of wamp and nuget package
			using var con = new MySqlConnection(serverConfiguration);

			//open the connection
			con.Open();

			//returning the server version
			return con.ServerVersion;
		}

		//getting all the flowers in our databses
		public static List<Flower> GetAllFlowers()
        {
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM materials WHERE location_id=1";

			using var cmd = new MySqlCommand(sql, con);

			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			//init our returned list
			var results = new List<Flower>();

            //loop through all the data
            while (reader.Read())
            {
				//there are 8 columns that we need to count but the quantity (constructor value is at position 3
				var flower = new Flower(reader.GetInt32(3))
				{
					Name = reader.GetString(1),
					Category = reader.GetString(2),
					ImgUrl = reader.GetString(4),

					//not all of the fields are here yet

				};//flower var
				results.Add(flower);
			}//while
			return results;
		}//getting all flowers list


		//update the quantity of our flowers
		public static void UpdateFlowerQuantity(string name, int newQuantity)
		{
			//connect to db
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//sql query
			//setup out query
			
			string sql = $"UPDATE materials SET quantity = @quantity WHERE(name = @name AND location_id = 1)";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			//using placeholders and assigning them values
			cmd.Parameters.AddWithValue("@name", name);
			cmd.Parameters.AddWithValue("@quantity", newQuantity);

			cmd.Prepare();
			cmd.ExecuteNonQuery();
		}

		//getting all the recipes
		public static List<Recipe> GetAllRecipes()
        {
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM bouquets WHERE location_id=1";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			//init our returned list
			var results = new List<Recipe>();


			//loop through our returned data and do this for each entry
			while (reader.Read())
			{
				//modelling a new object according to rhe class
				var recipe = new Recipe(reader.GetInt32(3))
				{
					Id = reader.GetInt32(0),
					Name = reader.GetString(1),
					Category = reader.GetString(2),
					ImgUrl = reader.GetString(4),
					Price = reader.GetInt32(5),
					Location_id = reader.GetInt32(6)
				};

				var materials = new List<string>();

				materials.Add(reader.GetString(7));
				materials.Add(reader.GetString(8));
				materials.Add(reader.GetString(9));
				materials.Add(reader.GetString(10));
				materials.Add(reader.GetString(11));
				materials.Add(reader.GetString(12));
				materials.Add(reader.GetString(13));
				materials.Add(reader.GetString(14));
				materials.Add(reader.GetString(15));
				materials.Add(reader.GetString(16));
				materials.Add(reader.GetString(17));
				materials.Add(reader.GetString(18));

				recipe.Materials = materials;

				results.Add(recipe);
			}
			return results;
		}

		public static void CraftRecipe(string nameId, int newCount, List<string> materials)
		{
			//connect to db
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//sql query
			//setup out query
			string sql = $"UPDATE bouquets SET quantity=@count WHERE name=@name";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			//using placeholders and assigning them values
			cmd.Parameters.AddWithValue("@name", nameId);
			cmd.Parameters.AddWithValue("@count", newCount);

			cmd.Prepare();
			cmd.ExecuteNonQuery();

			//to do remove the ingredients
			//UpdateBlockCountAfterCraft(materials);
		}


		public Database()
		{
		}
	}
}

