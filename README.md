This sample app demonstrates what I believe is a bug in SKCropNode.  The scene that appears when launching the app contains an SKCropNode that is composed of a 512x512 blue SKSpriteNode that is masked by a 256x256 SKSpriteNode.  You therefore see a 256x256 blue square.  If you touch the blue square a label node appears indicating that the square was touched.  However, if you touch the area outside of the 256x256 mask and inside the full 512x512 extent, the scene also responds.  To me, this is incorrect behavior as SKCropNode should mask all UI -- not just the visual part.  If I am mistaken and this is not a bug, then the documentation should be updated to reflect that this is expected behavior.

Steps to Reproduce:
1.  Launch the example app.
2.  Press the blue square.  Note that the scene responds.
3.  Press outside of the blue square but inside the 512x512 area enclosing the blue square.  Note that the scene responds.  (THIS IS THE BUG!)
4.  Press outside of the 512x512 area, note that the scene does not respond.

Expected Results:
The scene should only respond when the blue square is touched, i.e. it should only respond to touches in the masked area.  

Actual Results:
The scene responds to all touches covered by the extent of the SKCropNode, not just the touches in the masked area.
