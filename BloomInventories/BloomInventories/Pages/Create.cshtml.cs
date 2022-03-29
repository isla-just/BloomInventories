using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BloomInventories.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace BloomInventories.Pages
{
	public class CreateModel : PageModel
    {

        public List<Recipe> allRecipes = new List<Recipe>();
        public bool MessageSuccess { get; set; }

        public void OnGet(bool success = true)
        {
            allRecipes = new RecipeBook(1).Recipes;
            MessageSuccess = success;
        }


        public IActionResult OnPostCraft(string name, int quantity, List<string> materials, int location_id)
        {
            Console.WriteLine($"{name} should change to {quantity+1}");
            //new RecipeBook().CraftRecipe(name, quantity + 1, materials, location_id);


            return Redirect($"./Craft/?message=There are now {quantity} {name}");
        }


        public void OnPostLocation(int location_id)
        {
            Console.WriteLine(location_id);

            allRecipes = new RecipeBook(location_id).Recipes;

            //return RedirectToPage("./Dashboard");
        }

    }
}
