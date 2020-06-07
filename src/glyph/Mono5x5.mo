import Types "../Types";
import Debug "mo:base/Debug";
import P "mo:base/Prelude";

module {
  public func bitmapOfChar(c:Char) : Types.BitMapData {
    switch (bitsOfChar(c)) {
      case (?_bits) {
             { bits = _bits;
               dim = {
                 width = 5;
                 height = 5 };
             }
           };
      case null {
             Debug.print ("Error: mono5x5 is missing char: " # (debug_show c));
             P.xxx()
           };
    }
  };

  func bitsOfChar(ch:Char) : ?[[Bool]] {
    let c = false; // pronounced "cipher"
    let t = true;
    switch ch {
      case '☺' ?[
           [ c, t, t, t, c ],
           [ t, c, t, c, t ],
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case 'ļ' ?[
           [ t, t, t, t, t ],
           [ t, t, c, t, t ],
           [ t, c, t, c, t ],
           [ t, t, c, t, t ],
           [ t, t, t, t, t ]
        ];
        case 'ķ' ?[
           [ c, c, t, c, c ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ],
           [ c, c, t, t, c ],
           [ c, c, t, t, c ]
        ];
        case '◊' ?[
           [ c, c, t, c, c ],
           [ c, t, c, t, c ],
           [ t, c, c, c, t ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ]
        ];
        case '⇲' ?[
           [ t, c, t, c, c ],
           [ c, t, t, c, t ],
           [ t, t, t, c, t ],
           [ c, c, c, c, t ],
           [ c, t, t, t, t ]
        ];
        case '█' ?[
           [ t, t, t, t, t ],
           [ t, t, t, t, t ],
           [ t, t, t, t, t ],
           [ t, t, t, t, t ],
           [ t, t, t, t, t ]
        ];
        case '░' ?[
           [ t, c, t, c, t ],
           [ c, t, c, t, c ],
           [ t, c, t, c, t ],
           [ c, t, c, t, c ],
           [ t, c, t, c, t ]
        ];
        case '━' ?[
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ t, c, t, c, t ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ]
        ];
        case '►' ?[
           [ c, c, t, c, c ],
           [ c, c, t, t, c ],
           [ t, c, t, t, t ],
           [ c, c, t, t, c ],
           [ c, c, t, c, c ]
        ];
        case '→' ?[
           [ c, c, t, c, c ],
           [ c, c, c, t, c ],
           [ t, t, t, t, t ],
           [ c, c, c, t, c ],
           [ c, c, t, c, c ]
        ];
        case '?' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, c, t, t, c ],
           [ c, c, c, c, c ],
           [ c, c, t, c, c ]
        ];
        case '*' ?[
           [ c, c, c, c, c ],
           [ c, c, t, c, c ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ],
           [ c, c, c, c, c ]
        ];
        case '0' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, c, t, c, t ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case '1' ?[
           [ c, t, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, t, t, t, c ]
        ];
        case '2' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, c, t, t, c ],
           [ c, t, c, c, c ],
           [ t, t, t, t, t ]
        ];
        case '3' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, c, t, t, c ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case '4' ?[
           [ c, c, t, c, t ],
           [ c, c, t, c, t ],
           [ c, t, c, c, t ],
           [ t, t, t, t, t ],
           [ c, c, c, c, t ]
        ];
        case '5' ?[
           [ t, t, t, t, t ],
           [ t, c, c, c, c ],
           [ c, t, t, t, c ],
           [ c, c, c, c, t ],
           [ t, t, t, t, c ]
        ];
        case '6' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, c ],
           [ t, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case '7' ?[
           [ t, t, t, t, t ],
           [ c, c, c, c, t ],
           [ c, c, c, t, c ],
           [ c, c, t, c, c ],
           [ c, t, c, c, c ]
        ];
        case '8' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case '9' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ c, t, t, t, t ],
           [ c, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case 'a' ?[
           [ c, c, t, c, c ],
           [ c, t, c, t, c ],
           [ t, c, c, c, t ],
           [ t, t, t, t, t ],
           [ t, c, c, c, t ]
        ];
        case 'b' ?[
           [ t, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, t, t, t, c ]
        ];
        case 'c' ?[
           [ c, t, t, t, t ],
           [ t, c, c, c, c ],
           [ t, c, c, c, c ],
           [ t, c, c, c, c ],
           [ c, t, t, t, t ]
        ];
        case 'd' ?[
           [ t, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, t, t, t, c ]
        ];
        case 'e' ?[
           [ t, t, t, t, t ],
           [ t, c, c, c, c ],
           [ t, t, t, c, c ],
           [ t, c, c, c, c ],
           [ t, t, t, t, t ]
        ];
        case 'f' ?[
           [ t, t, t, t, t ],
           [ t, c, c, c, c ],
           [ t, t, t, c, c ],
           [ t, c, c, c, c ],
           [ t, c, c, c, c ]
        ];
        case 'g' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, c ],
           [ t, c, t, t, t ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case 'h' ?[
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, t, t, t, t ],
           [ t, c, c, c, t ]
        ];
        case 'i' ?[
           [ c, t, t, t, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, t, t, t, c ]
        ];
        case 'j' ?[
           [ c, c, c, t, t ],
           [ c, c, c, c, t ],
           [ c, c, c, c, t ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case 'k' ?[
           [ t, c, c, c, t ],
           [ t, c, c, t, c ],
           [ t, t, t, c, c ],
           [ t, c, c, t, c ],
           [ t, c, c, c, t ]
        ];
        case 'l' ?[
           [ t, c, c, c, c ],
           [ t, c, c, c, c ],
           [ t, c, c, c, c ],
           [ t, c, c, c, c ],
           [ t, t, t, t, t ]
        ];
        case 'm' ?[
           [ t, c, c, c, t ],
           [ t, t, c, t, t ],
           [ t, c, t, c, t ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ]
        ];
        case 'n' ?[
           [ t, c, c, c, t ],
           [ t, t, c, c, t ],
           [ t, c, t, c, t ],
           [ t, c, c, t, t ],
           [ t, c, c, c, t ]
        ];
        case 'o' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case 'p' ?[
           [ t, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, t, t, t, c ],
           [ t, c, c, c, c ],
           [ t, c, c, c, c ]
        ];
        case 'q' ?[
           [ c, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, c, t, c, t ],
           [ c, t, t, t, c ],
           [ c, c, c, c, t ]
        ];
        case 'r' ?[
           [ t, t, t, t, c ],
           [ t, c, c, c, t ],
           [ t, t, t, t, c ],
           [ t, c, c, t, c ],
           [ t, c, c, c, t ]
        ];
        case 's' ?[
           [ c, t, t, t, t ],
           [ t, c, c, c, c ],
           [ c, t, t, t, c ],
           [ c, c, c, c, t ],
           [ t, t, t, t, c ]
        ];
        case 't' ?[
           [ t, t, t, t, t ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ]
        ];
        case 'u' ?[
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ c, t, t, t, c ]
        ];
        case 'v' ?[
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ c, t, c, t, c ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ]
        ];
        case 'w' ?[
           [ t, c, c, c, t ],
           [ t, c, c, c, t ],
           [ t, c, t, c, t ],
           [ t, t, c, t, t ],
           [ t, c, c, c, t ]
        ];
        case 'x' ?[
           [ t, c, c, c, t ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ],
           [ c, t, c, t, c ],
           [ t, c, c, c, t ]
        ];
        case 'y' ?[
           [ t, c, c, c, t ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ]
        ];
        case 'z' ?[
           [ t, t, t, t, t ],
           [ c, c, c, t, c ],
           [ c, c, t, c, c ],
           [ c, t, c, c, c ],
           [ t, t, t, t, t ]
        ];
        case ' ' ?[
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ]
        ];
        case '.' ?[
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ c, t, t, t, c ],
           [ c, t, t, t, c ],
           [ c, t, t, t, c ]
        ];
        case ',' ?[
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ c, c, c, t, c ],
           [ c, c, c, t, c ],
           [ c, c, t, c, c ]
        ];
        case ';' ?[
           [ c, t, t, t, c ],
           [ c, t, t, t, c ],
           [ c, c, c, c, c ],
           [ c, t, t, t, c ],
           [ t, t, c, c, c ]
        ];
        case ':' ?[
           [ c, t, t, t, c ],
           [ c, t, t, t, c ],
           [ c, c, c, c, c ],
           [ c, t, t, t, c ],
           [ c, t, t, t, c ]
        ];
        case '<' ?[
           [ c, c, c, t, c ],
           [ c, c, t, c, c ],
           [ c, t, c, c, c ],
           [ c, c, t, c, c ],
           [ c, c, c, t, c ]
        ];
        case '>' ?[
           [ c, t, c, c, c ],
           [ c, c, t, c, c ],
           [ c, c, c, t, c ],
           [ c, c, t, c, c ],
           [ c, t, c, c, c ]
        ];
        case '(' ?[
           [ c, c, c, t, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, t, c, c ],
           [ c, c, c, t, c ]
        ];
        case ')' ?[
           [ c, c, t, c, c ],
           [ c, c, c, t, c ],
           [ c, c, c, t, c ],
           [ c, c, c, t, c ],
           [ c, c, t, c, c ]
        ];
        case '{' ?[
           [ c, c, c, t, t ],
           [ c, c, t, c, c ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ],
           [ c, c, c, t, t ]
        ];
        case '}' ?[
           [ t, t, c, c, c ],
           [ c, c, t, c, c ],
           [ c, t, c, t, c ],
           [ c, c, t, c, c ],
           [ t, t, c, c, c ]
        ];
        case ']' ?[
           [ c, c, t, t, c ],
           [ c, c, c, t, c ],
           [ c, c, c, t, c ],
           [ c, c, c, t, c ],
           [ c, c, t, t, c ]
        ];
        case '[' ?[
           [ c, t, t, c, c ],
           [ c, t, c, c, c ],
           [ c, t, c, c, c ],
           [ c, t, c, c, c ],
           [ c, t, t, c, c ]
        ];
        case '\'' ?[
           [ c, t, c, t, c ],
           [ c, t, c, t, c ],
           [ c, t, c, t, c ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ]
        ];
        case '=' ?[
           [ c, c, c, c, c ],
           [ t, t, t, t, t ],
           [ c, c, c, c, c ],
           [ t, t, t, t, t ],
           [ c, c, c, c, c ]
        ];
        case '_' ?[
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ t, t, t, t, t ]
        ];
        case '-' ?[
           [ c, c, c, c, c ],
           [ c, c, c, c, c ],
           [ t, t, t, t, t ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ]
        ];
        case '/' ?[
           [ c, c, c, c, t ],
           [ c, c, c, t, c ],
           [ c, c, t, c, c ],
           [ c, t, c, c, c ],
           [ t, c, c, c, c ]
        ];
        case '`' ?[
           [ c, t, c, c, c ],
           [ c, c, t, c, c ],
           [ c, c, c, t, c ],
           [ c, c, c, c, c ],
           [ c, c, c, c, c ]
        ];
        case '#' ?[
           [ c, t, c, t, c ],
           [ t, t, t, t, t ],
           [ c, t, c, t, c ],
           [ t, t, t, t, t ],
           [ c, t, c, t, c ]
        ];
        case '!' ?[
           [ c, c, c, t, t ],
           [ c, c, c, t, t ],
           [ c, c, t, t, c ],
           [ c, c, c, c, c ],
           [ c, t, t, c, c ]
        ];
        case _ null;
    }
  };

}