public class ApexCallFromFlow {
    public static void runFlow() {
        Map<String, Object> flowInputs = new Map<String, Object>();
        flowInputs.put('Firstname', 'Nick');
        flowInputs.put('Lastname', 'Doe');

        // Входы задаются конструктором
        Flow.Interview.APFlow_DY flowInstance =
            new Flow.Interview.APFlow_DY(flowInputs);

        flowInstance.start();

        String contactId = (String) flowInstance.getVariableValue('ContactId');
        System.debug('Contact created with ID: ' + contactId);
    }
}