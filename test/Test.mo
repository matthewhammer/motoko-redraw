import Debug "mo:base/Debug";

// test that we can import and use these modules
import Render "../src/Render";
import Mono5x5 "../src/glyph/Mono5x5";

actor {
  public func reset() async ?() {
    ?()
  };

  public func test() async ?() {
    // to do
    Debug.print "hello world";
    ?()
  };
}
