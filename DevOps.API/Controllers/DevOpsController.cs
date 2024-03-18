using DevOps.API.Classes;
using System.IO;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace DevOps.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class DevOpsController : ControllerBase
{
    [HttpGet("errors")]
    public IActionResult Errors()
    {
        return Ok("Putz, deu erro!");
    }

    [HttpGet("healthCheck")]
    public IActionResult Health()
    {
        var random = new Random().Next(100);
        
        if(random > 95)
        {
            return BadRequest("Api fora do ar!");
        }

        return Ok("Api funcionando normalmente!");
    }

    [HttpGet()]
    public async Task<IActionResult> GetAllBooks() 
    {
        var filePath = "..\\DevOps.API\\Json\\Books.json";

        var file = System.IO.File.ReadAllText(filePath);

        var books = JsonConvert.DeserializeObject<List<Book>>(file);    

        return Ok(books);
    }
}
