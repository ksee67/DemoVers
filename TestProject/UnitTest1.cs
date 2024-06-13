using WpfApp2;

namespace TestProject
{
    [TestFixture]
    public class Tests
    {
        [Test]
        public void CountNumberCheck()
        {
            var CountCheck = new TestClass();
            int result = CountCheck.CountCheck();
            Assert.That(Equals(1, result));
        }
    }
}