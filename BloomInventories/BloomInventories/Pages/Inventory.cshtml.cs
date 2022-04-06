using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BloomInventories.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace BloomInventories.Pages
{
	public class InventoryModel : PageModel
    {
        public List<Flower> allFlowers = new List<Flower>();
        public string Message { get; set; } = string.Empty;
        public int location = 1;

        public void OnGet(string message="")
        {
            //sending the message so we can get a popup
            Message = message;

            //calling flowers from inventory model
            allFlowers = new Inventory(1).Flowers;
        }//onget

        //to update and call the post method
        public IActionResult OnPostUpdate(string name, int quantity, int location_id)
        {

            var location_name = "";

            if (location_id == 1)
            {
                location_name = "Bloom Headquarters";
            }else if (location_id == 2)
            {
                location_name = "Peony Place";
            }
            else
            {
                location_name = "Carnation Corner";
            }

            Console.WriteLine($"{name} should change to {quantity}");
            new Inventory(location_id).UpdateQuantity(name, quantity, location_id);

            return Redirect($"./Inventory/?message=There are now {quantity} {name} at {location_name}");
        }

        public void OnPostLocation(int location_id)
        {
            Console.WriteLine(location_id);
            location = location_id;

            allFlowers = new Inventory(location_id).Flowers;

            //return RedirectToPage("./Dashboard");
        }
    }
}
