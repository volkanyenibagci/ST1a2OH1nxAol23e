namespace ACME.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Migration1 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.tbl_Counter",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Hour = c.Int(nullable: false),
                        Mınute = c.Int(nullable: false),
                        Second = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.tbl_Counter");
        }
    }
}
