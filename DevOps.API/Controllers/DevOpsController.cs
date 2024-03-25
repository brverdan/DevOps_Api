using DevOps.API.Classes;
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
        return Ok("Putz, deu erro! Versão: V2");
    }

    [HttpGet("healthCheck")]
    public IActionResult Health()
    {
        var random = new Random().Next(1000);

        if (random > 95)
        {
            return BadRequest("Api fora do ar! Versão: V2");
        }

        return Ok("Api funcionando normalmente! Versão: V2");
    }
    [HttpGet("/")]
    public async Task<IActionResult> GetAllBooks()
    {
        var baseDirectory = AppDomain.CurrentDomain.BaseDirectory;

        string configPath = Path.Combine(baseDirectory, "Json", "Books.json");

        var file = await System.IO.File.ReadAllTextAsync(configPath);

        var books = JsonConvert.DeserializeObject<List<Book>>(file);

        return Ok(books);
    }
}
