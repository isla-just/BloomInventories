using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BloomInventories.Models;
using BloomInventories.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace BloomInventories.Pages
{
	public class CreateModel : PageModel
    {
        public int location = 1;

        public List<Recipe> allRecipes = new List<Recipe>();
        public List<Recipe> popupRecipe = new List<Recipe>();

        public bool MessageSuccess { get; set; }
        public string Message { get; set; } = string.Empty;

        public void OnGet(int location_id=1, bool success = true, string message = "")
        {
            MessageSuccess = success;
            Message = message;

            location = location_id;
            allRecipes = new RecipeBook(location).Recipes;
        }


        public IActionResult OnPostCraft(string name, int quantity, List<string> materials, int location_id)
        {

            var location_name = "";

            if (location_id == 1)
            {
                location_name = "Bloom Headquarters";
            }
            else if (location_id == 2)
            {
                location_name = "Peony Place";
            }
            else
            {
                location_name = "Carnation Corner";
            }

            Console.WriteLine($"{name} should change to {quantity+1}");
            new RecipeBook(location_id).CraftRecipe(name, quantity + 1, materials, location_id);
            location = location_id;

            return Redirect($"./Create/?message=There are now {quantity+1} {name} bouquets at {location_name}&location_id={location_id}");
        }

        public void OnPostPopup(int id, int location_id)
        {
            location = location_id;
            Console.WriteLine("current location" + location_id);
            popupRecipe = Database.PopupRecipe(id);

            allRecipes = new RecipeBook(location_id).Recipes;
            Message = "popup";

        }


        public void OnPostLocation(int location_id)
        {
            Console.WriteLine(location_id);
            location = location_id;

            allRecipes = new RecipeBook(location_id).Recipes;

            //return RedirectToPage("./Dashboard");
        }


    }
}
