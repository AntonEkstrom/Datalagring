using Case_Management_System.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case_Management_System.Models
{
   
    internal class Case
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string HeadLine { get; set; } = null!;

        [Required]
        [StringLength(200)]
        public string Description { get; set; } = null!;

        public DateTime DateTime { get; set; }

        [Required]
        public int UserId { get; set; }
        public User User { get; set; }

        [Required]
        public int StatusId { get; set; }
        public Status Status { get; set; }



    }


}

