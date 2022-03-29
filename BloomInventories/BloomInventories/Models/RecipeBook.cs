using System;
using BloomInventories.Services;

namespace BloomInventories.Models
{
	public class RecipeBook
	{

		public List<Recipe> Recipes = new List<Recipe>();

        public RecipeBook(int location_id)
        {
            Recipes = Database.GetAllRecipes(location_id);
        }



        public void CraftRecipe(string name, int quantity, List<string> materials, int location_id)
        {
            //call the database function
            Database.CraftRecipe(name, quantity, materials, location_id);
        }
    }
}

