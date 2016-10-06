    import java.awt.*;
    import java.util.*;
    import java.applet.Applet;
    public class SKyline extends Applet
    {
        private final int APPLET_WIDTH = 550;
        private final int APPLET_HEIGHT = 200;
        private final int MAX_GAP = 40;
        private final int MIN_GAP = 5;
        Random gen = new Random();
        //----------------------------------------------------------------------------------------------
        //  Creates different building objects.
        //----------------------------------------------------------------------------------------------
        Building b1 = new Building (55, 75);
        Building b2 = new Building (40, 170);
        Building b3 = new Building ();
        Building b4 = new Building (75, 135);
        Building b5 = new Building (30, 150);
        Building b6 = new Building ();
        Building b7 = new Building (25, 100);
        //----------------------------------------------------------------------------------------------
        //  Draws building with different gap distances.
        //----------------------------------------------------------------------------------------------
        public void paint (Graphics page)
        {
            setBackground (Color.cyan);
            setSize (APPLET_WIDTH, APPLET_HEIGHT);
            int gapVar, base, gap, leftC;
            gapVar = MAX_GAP - MIN_GAP;
            base = APPLET_HEIGHT - 10;
            gap = (gen.nextInt() * gapVar) + MIN_GAP;
            leftC = gap;
            page.drawLine (0, base, APPLET_WIDTH, base);
            b1.draw (page, leftC, base);
            gap = (int) (Math.random() * gapVar) + MIN_GAP;
            leftC += b1.getWidth() + gap;
            b2.draw (page, leftC, base);
            gap = (int) (Math.random() * gapVar) + MIN_GAP;
            leftC += b2.getWidth() + gap;
            b3.draw (page, leftC, base);
            gap = (int) (Math.random() * gapVar) + MIN_GAP;
            leftC += b3.getWidth() + gap;
            b4.draw (page, leftC, base);
            gap = (int) (Math.random() * gapVar) + MIN_GAP;
            leftC += b4.getWidth() + gap;
            b5.draw (page, leftC, base);
            gap = (int) (Math.random() * gapVar) + MIN_GAP;
            leftC += b5.getWidth() + gap;
            b6.draw (page, leftC, base);
            gap = (int) (Math.random() * gapVar) + MIN_GAP;
            leftC += b6.getWidth() + gap;
            b7.draw (page, leftC, base);
        }
    }