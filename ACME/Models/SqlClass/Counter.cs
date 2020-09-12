using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;


namespace ACME.Models.SqlClass
{
	[Table("tbl_Counter")]
	public class Counter
	{
		[Key, DatabaseGenerated(DatabaseGeneratedOption.Identity), Required]
		public int ID { get; set; }

		
		public int Hour { get; set; }


		public int Mınute { get; set; }

		public int Second { get; set; }





	}
}