import extensions'text;
import system'routines;

public program()
{
   string str := "1,2,3";
//   var script := "split";

   var output := str.splitBy($10).accumulate(new StringWriter(), (acc, x => acc.add(x).add("+"))).then::(x => x.Substring(0, x.Length-1));

   console.writeLine(output);
}