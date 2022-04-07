using System;
using System.Text;
using BloomInventories.Models;
using MySql.Data.MySqlClient;
using XSystem.Security.Cryptography;

namespace BloomInventories.Services
{
	public class Database
	{

		//database configuration to connect to localhost 
		private static string serverConfiguration = @"server=localhost;port=8889;userid=root;password=root;database=bloom";

		private static int RandomId;
		private static int RandomFlowerId;

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
		public static List<Flower> GetAllFlowers(int location_id)
        {
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM materials WHERE location_id=@location_id";

			using var cmd = new MySqlCommand(sql, con);
			cmd.Parameters.AddWithValue("@location_id", location_id);

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
					Location_id = reader.GetInt32(5),

					//not all of the fields are here yet

				};//flower var
				results.Add(flower);
			}//while
			return results;
		}//getting all flowers list


		//update the quantity of our flowers
		public static void UpdateFlowerQuantity(string name, int newQuantity, int location_id)
		{
			//connect to db
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//sql query
			//setup out query
			
			string sql = $"UPDATE materials SET quantity = @quantity WHERE(name = @name AND location_id = @location_id)";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			//using placeholders and assigning them values
			cmd.Parameters.AddWithValue("@name", name);
			cmd.Parameters.AddWithValue("@quantity", newQuantity);
			cmd.Parameters.AddWithValue("@location_id", location_id);

			cmd.Prepare();
			cmd.ExecuteNonQuery();
		}

		//getting all the recipes
		public static List<Recipe> GetAllRecipes(int location_id)
        {
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM bouquets WHERE location_id=@location_id";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			cmd.Parameters.AddWithValue("@location_id", location_id);

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
					location_id = reader.GetInt32(6)
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

		//getting all the recipes
		public static List<Recipe> PopupRecipe(int id)
		{
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM bouquets WHERE id=@id";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);


			cmd.Parameters.AddWithValue("@id", id);

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
					location_id = reader.GetInt32(6)
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

		public static void CraftRecipe(string name, int count, List<string> materials, int location_id)
		{
			//connect to db
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//sql query
			//setup out query
			string sql = $"UPDATE bouquets SET quantity=@count WHERE name=@name AND location_id=@location_id";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			//using placeholders and assigning them values
			cmd.Parameters.AddWithValue("@name", name);
			cmd.Parameters.AddWithValue("@count", count);
			cmd.Parameters.AddWithValue("@location_id", location_id);

			cmd.Prepare();
			cmd.ExecuteNonQuery();

            //to do remove the ingredients
            UpdateMaterialCountAfterCraft(materials, location_id);
        }

        public static void UpdateMaterialCountAfterCraft(List<string> materials, int location_id)
        {
            //connect to db
            using var con = new MySqlConnection(serverConfiguration);
            //open the connection
            con.Open();

            foreach (var material in materials)
            {
                if (material != "")
                {
                    int currentCount = GetCountOfMaterial(material, location_id);


                    //setup out query
                    string sql = "UPDATE materials SET quantity=@quantity WHERE name=@name AND location_id=@location_id";

                    //executing our command
                    using var cmd = new MySqlCommand(sql, con);

                    //using placeholders and assigning them values
                    cmd.Parameters.AddWithValue("@name", material);
					cmd.Parameters.AddWithValue("@location_id", location_id);
					cmd.Parameters.AddWithValue("@quantity", currentCount - 1);


                    cmd.Prepare();
                    cmd.ExecuteNonQuery();
                }

            }
        }

        //getting the count of blocks so that we can update them
        public static int GetCountOfMaterial(string name, int location_id)
		{
			//connect to db
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT quantity FROM materials WHERE name=@name AND location_id=@location_id";

			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			cmd.Parameters.AddWithValue("@name", name);
			cmd.Parameters.AddWithValue("@location_id", location_id);

			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			int quantity = 0;

			//loop through our returned data and do this for each entry
			while (reader.Read())
			{
				//getting the current count
				quantity = reader.GetInt32(0);
			}

			return quantity;
		}

		//getting all the seasonal flowers
		public static List<Flower> GetAllSeasonal()
		{
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM materials WHERE category='seasonal' AND location_id=1";

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


		//getting all the low quantity flowers
		public static List<Flower> GetLowFlowers(int location_id)
		{
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM materials WHERE quantity<10 AND location_id=@location_id ORDER BY quantity ASC ";

			using var cmd = new MySqlCommand(sql, con);
			cmd.Parameters.AddWithValue("@location_id", location_id);

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
					ImgUrl = reader.GetString(4),

					//not all of the fields are here yet

				};//flower var
				results.Add(flower);
			}//while
			return results;
		}//getting all flowers list

		public Database()
		{
		}

		//show random flower
		//getting all the low quantity flowers
		public static List<Employee> GetAllVerify()
		{

			Random rnd = new Random();
			int randomInt = rnd.Next(1, 6);

			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT * FROM verify WHERE id="+randomInt+"";

			using var cmd = new MySqlCommand(sql, con);

			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			//init our returned list
			var results = new List<Employee>();

			while (reader.Read())
			{
				//there are 8 columns that we need to count but the quantity (constructor value is at position 3
				var flower = new Employee()
				{
					id = reader.GetInt32(0),
					FlowerName = reader.GetString(1),
					FlowerImg = reader.GetString(2),

					//not all of the fields are here yet

				};//flower var
				results.Add(flower);

			}//while

			RandomId = randomInt;

			con.Close();
			return results;
		}//getting all flowers list

		public static bool VerifyUser(string verifyInput)
		{
			int getId = RandomId;

			//select the password from database
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//sql query
			//setup out query
			string sql = $"SELECT * FROM verify WHERE id="+getId+"";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);


			Console.WriteLine($"------- id:{ getId}");


			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			var databasePassword = "";

			Console.WriteLine($"------- database verify code:{ verifyInput}");

			while (reader.Read())
			{
				//getting the returned entry
				databasePassword = reader.GetString(1);
			}
			con.Close();

			//installed nuget package
			var data = Encoding.ASCII.GetBytes(verifyInput);

			//performing hash using our XAct.Core.PCL nuget package
			var hashData = new SHA1Managed().ComputeHash(data);
			var userInputHashCode = string.Empty;

			foreach (var key in hashData)
			{
				userInputHashCode += key.ToString("X2");
			}
		
			Console.WriteLine($"------- database verify code:{ databasePassword.ToUpper()}");
            Console.WriteLine($"------- input verify code:{ userInputHashCode}");

            if (databasePassword.ToUpper() == userInputHashCode)
			{
				Console.WriteLine("correct");
				return true;
			}
			else
			{
				Console.WriteLine("incorrect");
				return false;
			}
		}//end of login user

		//checking that the subscriber's email is unique
		public static bool VerifySubscriber(string email)
		{
			//select the password from database
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//sql query
			//setup out query
			string sql = $"SELECT * FROM subscribe where email=@email";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			//using placeholders and assigning them values
			cmd.Parameters.AddWithValue("@email", email);

			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			var databaseEmail = "";

			while (reader.Read())
			{
				//getting the returned entry
				databaseEmail = reader.GetString(0);

			}
			con.Close();

			if (databaseEmail != "")
			{
				return false;
				Console.WriteLine("this email has already been taken");
			}
			else
			{
				return true;
				Console.WriteLine("you are valid");
			}

		}

        ////add subscriber
        public static bool NewSubscriber(string email)
        {

            if (VerifySubscriber(email))
            {
                //connect to db
                using var con = new MySqlConnection(serverConfiguration);
                //open the connection
                con.Open();

                //sql query
                //setup out query
                string sql = $"INSERT INTO subscribe (email) VALUES (@email)";
                //executing our command
                using var cmd = new MySqlCommand(sql, con);

                //using placeholders and assigning them values
                cmd.Parameters.AddWithValue("@email", email);

                cmd.Prepare();
                cmd.ExecuteNonQuery();

				return true;
            }
            else
            {
                Console.WriteLine("this email is already in use, query cannot be performewd");
				return false;
            }


        }

		//count subscribers
		public static int GetSubscriberCount()
		{
			//connect to db
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT COUNT(*) FROM subscribe";

			//executing our command
			using var cmd = new MySqlCommand(sql, con);


			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			int quantity = 0;

			//loop through our returned data and do this for each entry
			while (reader.Read())
			{
				//getting the current count
				quantity = reader.GetInt32(0);
			}

			return quantity;
		}

		//get random bouquet for dashboard page
		public static List<Recipe> GetRandomBouquet()
		{

			//sql statement 1

			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			//getting the biggest id value
			string sql = "SELECT * FROM bouquets WHERE id=( SELECT max(id) FROM bouquets )";

			using var cmd = new MySqlCommand(sql, con);

			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			int quantity = 0;

			//loop through our returned data and do this for each entry
			while (reader.Read())
			{
				//getting the current count
				quantity = reader.GetInt32(0);
			}

			//setting the parameters for the random number
            Random rnd = new Random();
            int randomInt = rnd.Next(28, quantity);

			con.Close();

			//sql statement 2

			using var con2 = new MySqlConnection(serverConfiguration);
            //open the connection
            con2.Open();

            //setup out query
            string sql2 = $"SELECT * FROM bouquets WHERE id="+randomInt+"";

            using var cmd2 = new MySqlCommand(sql2, con2);

            //creates an instance of our command result that can be read in c#
            using MySqlDataReader reader2 = cmd2.ExecuteReader();

			//init our returned list
			var results2 = new List<Recipe>();


			//loop through our returned data and do this for each entry
			while (reader2.Read())
			{
				//modelling a new object according to rhe class
				var recipe = new Recipe(reader2.GetInt32(3))
				{
                    Id = reader2.GetInt32(0),
                    Name = reader2.GetString(1),
                    Category = reader2.GetString(2),
                    ImgUrl = reader2.GetString(4),
                };



                var materials = new List<string>();

                materials.Add(reader2.GetString(7));
                materials.Add(reader2.GetString(8));
                materials.Add(reader2.GetString(9));
                materials.Add(reader2.GetString(10));
                materials.Add(reader2.GetString(11));
                materials.Add(reader2.GetString(12));
                materials.Add(reader2.GetString(13));
                materials.Add(reader2.GetString(14));
                materials.Add(reader2.GetString(15));
                materials.Add(reader2.GetString(16));
                materials.Add(reader2.GetString(17));
                materials.Add(reader2.GetString(18));

                recipe.Materials = materials;

                results2.Add(recipe);
			}

			return results2;
		}//getting all flowers list

		//counting all of the flowers in a location
		//getting all the recipes
		public static int CountRecipes(int location_id)
		{
			using var con = new MySqlConnection(serverConfiguration);
			//open the connection
			con.Open();

			//setup out query
			string sql = "SELECT SUM(quantity) FROM bouquets WHERE location_id=@location_id";
			//executing our command
			using var cmd = new MySqlCommand(sql, con);

			cmd.Parameters.AddWithValue("@location_id", location_id);

			//creates an instance of our command result that can be read in c#
			using MySqlDataReader reader = cmd.ExecuteReader();

			int quantity = 0;

			//loop through our returned data and do this for each entry
			while (reader.Read())
			{
				//getting the current count
				quantity = reader.GetInt32(0);
			}

			return quantity;
		}


	}
}

