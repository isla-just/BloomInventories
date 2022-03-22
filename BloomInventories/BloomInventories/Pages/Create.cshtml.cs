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
            allRecipes = new RecipeBook().Recipes;
        }


        public IActionResult OnPostUpdate(string name, int count)
        {
            Console.WriteLine($"{name} should change to {count+1}");
            new Inventory().UpdateQuantity(name, count+1);

            return RedirectToPage("./Create");
        }
    }
}
