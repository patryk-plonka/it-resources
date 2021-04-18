using System;
using System.ComponentModel.DataAnnotations;

namespace MvcEntry.Models
{
    public class Entry
    {
        public int Id { get; set; }
        public string Title { get; set; }

        [DataType(DataType.Date)]
        public DateTime ReleaseDate { get; set; }
        public string Category { get; set; }
        public decimal Price { get; set; }
    }
}