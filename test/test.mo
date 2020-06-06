import Render "mo:redraw/render";
import Mono5x5 "mo:redraw/glyph/Mono5x5";

actor {
  public func redraw() : async Render.Result {
    // to do
    #ok(#redraw([]))
  };
}
