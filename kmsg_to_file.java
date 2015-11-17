import java.io.DataInputStream;  
import java.io.DataOutputStream;
 
 execCmd("echo /proc/kmsg > /mnt/sdcard/kmsg.log");
        
        public static void execCmd(String cmd) {
                DataOutputStream dos = null;
                DataInputStream dis = null;
                try {
                        Process p = Runtime.getRuntime().exec("su");
                        dos = new DataOutputStream(p.getOutputStream());
                        cmd += "\n";
                        dos.writeBytes(cmd);
                        dos.flush();
                        dos.writeBytes("exit\n");
                        dos.flush();
                        p.waitFor();
                } catch (IOException e) {
                        e.printStackTrace();
                } catch (InterruptedException e) {
                        e.printStackTrace();
                } finally {
                        try {
                                if (dos != null)
                                        dos.close();
                                if (dis != null)
                                        dis.close();
                        } catch (IOException e) {
                                e.printStackTrace();
                        }
                }
        }
