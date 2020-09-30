package fetcher;

public class Fetcher {
  public String run(String input, int duration) throws Exception {
    System.out.println("fetcher input: " + input);
    Thread.sleep(duration);
    return "FETCH RESULT";
  }
}
