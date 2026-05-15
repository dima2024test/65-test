trigger CaseBeforeUpdate on Case (before update) {
    for (Case c : Trigger.new) {
        Case oldC = Trigger.oldMap.get(c.Id);

        if (c.Status != oldC.Status && c.Status == 'Escalated') {
            c.Priority = 'High';
        }
    }
}