public with sharing class UtilityClass {
    public UtilityClass() {

    }

    Private static String HashCode(String s)
    {
        return String.valueOf( 31 * s.hashcode());
    }

    Public static String GenerateRandomString(Integer length)
    {
        if (length > 64)
        {
            length = 64;
        }
        Blob blobKey = crypto.generateAesKey(256);
        String key = EncodingUtil.convertToHex(blobKey);
        return key.substring(0,length);
    }


    private static Boolean checkPasswordComplicity(String s)
    {
        Pattern MyPattern = Pattern.compile('((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[~!@#$%^&*()_+-={}]).{6,20})');

        // Then instantiate a new Matcher object "MyMatcher"
        Matcher MyMatcher = MyPattern.matcher(s);

        return MyMatcher.matches();
    }

}
