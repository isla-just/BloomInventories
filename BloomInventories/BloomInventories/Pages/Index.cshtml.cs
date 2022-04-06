using BloomInventories.Models;
using BloomInventories.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace BloomInventories.Pages;

public class IndexModel : PageModel
{
    public string Message { get; set; } = string.Empty;
    public bool MessageSuccess { get; set; }

    public List<Employee> AllEmployees = new List<Employee>();

    private readonly ILogger<IndexModel> _logger;

    public IndexModel(ILogger<IndexModel> logger)
    {
        _logger = logger;
    }

    public void OnGet(string message = "", bool success= true)
    {
        AllEmployees = Database.GetAllVerify();

        Message = message;
        MessageSuccess = success;
    }

    public IActionResult OnPostVerify(string verifyInput)
    {
        //to do call the database function
        var success = Database.VerifyUser(verifyInput);

        if (success)
        {
            return Redirect($"./Dashboard");
        }
        else
        {
            return Redirect($"./Index/?success=false");
        }

    }


    //Add OnPost for Register

    public IActionResult OnPostSubscribe(string email)
    {

        //Call Database Add Function & redirect to Index page
        if (Database.VerifySubscriber(email)==true)
        {
           Database.NewSubscriber(email);


            return Redirect($"./Index/?message=you will be sent am email shortly");
        }
        else
        {
            return Redirect("./Index/?message=you've already subscribed");
        }



    }
}

