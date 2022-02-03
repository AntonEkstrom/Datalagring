using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case_Management_System.Models
{
    [Index(nameof(Email), IsUnique = true)]

    internal class User
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string FirstName { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string LastName { get; set; } = null!;

        [Required]
        [StringLength(100)]
        public string Email { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string PhoneNumber { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string StreetName { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string PostalCode { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string City { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string Country { get; set; } = null!;

        [Required]
        [StringLength(50)]
        public string FullName => $"{FirstName} {LastName}, {Email}";
        public string FirstLastName => $"{FirstName} {LastName}";
        public string CaseView => $"{FirstName} [{Email}]";

        public virtual ICollection<Case> Cases { get; set; }
    }
}
