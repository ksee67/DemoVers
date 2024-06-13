using System.Linq;

namespace WpfApp2
{
    public class TestClass
    {
         public FishDataBaseEntities db = new FishDataBaseEntities();

        public int CountCheck()
        {
            return db.Active.ToList().Count;
        }

    }
}
