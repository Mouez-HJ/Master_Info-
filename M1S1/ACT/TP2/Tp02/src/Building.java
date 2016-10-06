    import java.awt.*;
    import java.util.*;
    public class Building
    {
        private final int SET_WIDTH = 50;
        private final int SET_HEIGHT = 100;
        private final int SET_WIND = 5;
        private final int MAX_WIND = 15;
        private final int WIND_SIZE = 5;
        private int width, height, windows;
        Random gen = new Random();
        //----------------------------------------------------------------------------------------------
        //  Constructor. Set values.
        //----------------------------------------------------------------------------------------------
        public Building ()
        {
            width = SET_WIDTH;
            height = SET_HEIGHT;
            windows = SET_WIND;
        }
        //----------------------------------------------------------------------------------------------
        //  Sets building size. Decides number of windows.
        //----------------------------------------------------------------------------------------------
        public Building (int bWidth, int bHeight)
        {
            width = bWidth;
            height = bHeight;;
            windows = (gen.nextInt() * MAX_WIND) + 1;
        }
        //----------------------------------------------------------------------------------------------
        //  Get width.
        //----------------------------------------------------------------------------------------------
        public int getWidth ()
        {
            return width;
        }
        //----------------------------------------------------------------------------------------------
        //  To draw building.
        //----------------------------------------------------------------------------------------------
        public void draw (Graphics page, int leftC, int bottom)
        {
            int top = bottom - height;
            page.setColor (Color.black);                 // building
            page.fillRect (leftC, top, width, height);
            page.setColor (Color.yellow);                 // windows
            for (int count = 1; count <= windows; count++)
            {
                int windX, windY;
                windX = leftC + (gen.nextInt() * (width - WIND_SIZE));
                windY = top + (gen.nextInt() * (height - WIND_SIZE));
                page.fillRect (windX, windY, WIND_SIZE, WIND_SIZE);            
            }
        }
    }