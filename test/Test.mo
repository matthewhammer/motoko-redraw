import Debug "mo:base/Debug";

// test that we can import and use these modules
import Render "../src/Render";
import Mono5x5 "../src/glyph/Mono5x5";

actor {
  public func selfTest() {
    // to do
    Debug.print "selfTest: success"
  };

  public func doNextCall() : async Bool {
    return false
  };

  public func redraw() : async Render.Result {
    // to do
    #ok(#redraw([]))
  };
}
