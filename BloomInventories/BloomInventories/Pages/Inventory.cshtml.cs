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

        public void OnGet(string message="")
        {
            //sending the message so we can get a popup
            Message = message;

            //calling flowers from inventory model
            allFlowers = new Inventory().Flowers;
        }//onget

        //to update and call the post method
        public IActionResult OnPostUpdate(string name, int quantity)
        {
            Console.WriteLine($"{name} should change to {quantity}");
            new Inventory().UpdateQuantity(name, quantity);

            return Redirect($"./Inventory/?message={name} has been updated to {quantity}");
        }
    }
}
