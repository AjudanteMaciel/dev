using System;
using System.Runtime.InteropServices;
using System.Threading;

class Program
{
    [DllImport("user32.dll")]
    static extern bool SetCursorPos(int X, int Y);

    [DllImport("user32.dll")]
    static extern bool GetCursorPos(out POINT point);

    [DllImport("user32.dll")]
    static extern short GetAsyncKeyState(int vKey);

    struct POINT
    {
        public int X;
        public int Y;
    }

    const int VK_LBUTTON = 0x01;
    const int VK_RBUTTON = 0x02;

    static void Main()
    {
        GetCursorPos(out POINT start);

        int radius = 10;
        double angle = 0;

        while (true)
        {
            if ((GetAsyncKeyState(VK_LBUTTON) & 0x8000) != 0 ||
                (GetAsyncKeyState(VK_RBUTTON) & 0x8000) != 0)
            {
                SetCursorPos(start.X, start.Y);
                break;
            }

            int x = start.X + (int)(Math.Cos(angle) * radius);
            int y = start.Y + (int)(Math.Sin(angle) * radius);

            SetCursorPos(x, y);

            angle += 0.12;

            if (angle >= Math.PI * 2)
                angle = 0;

            Thread.Sleep(15);
        }
    }
}