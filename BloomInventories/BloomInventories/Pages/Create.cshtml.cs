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

        public void OnGet()
        {
            allRecipes = new RecipeBook(1).Recipes;
        }


        public IActionResult OnPostUpdate(string name, int count, int location_id)
        {
            Console.WriteLine($"{name} should change to {count+1}");
            new Inventory(location_id).UpdateQuantity(name, count+1, location_id);

            return RedirectToPage("./Create");
        }

        public void OnPostLocation(int location_id)
        {
            Console.WriteLine(location_id);

            allRecipes = new RecipeBook(location_id).Recipes;

            //return RedirectToPage("./Dashboard");
        }

    }
}
