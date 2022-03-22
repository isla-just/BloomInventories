using System;
using BloomInventories.Services;

namespace BloomInventories.Models
{
	public class RecipeBook
	{

		public List<Recipe> Recipes = new List<Recipe>();

		public RecipeBook()
		{
			Recipes = Database.GetAllRecipes();
		}


        public void CraftRecipe(string name, int quantity, List<string> materials)
        {
            //call the database function
            Database.CraftRecipe(name, quantity, materials);
        }
    }
}

