import extensions'text;

public program()
{
   var str := "1,2,3";
//   var script := "split";

   var output := str.split($10).accumulate(new StringWriter(), (acc, x => acc.append(x).append("+"))).then::(x => x.Substring(0, x.Length-1));

   console.writeLine(output);
}