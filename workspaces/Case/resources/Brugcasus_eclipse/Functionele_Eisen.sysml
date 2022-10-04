package 'Functionele Eisen' {
    import Functieboom::*;
    
    requirement <'eis0003'> 'Tonen groen scheepvaartsein' {
        /* Alleen en slechst alleen als de val vergrendelt is in de open positie,
        * mogen de scheepvaartseinen een 'doorvaart toegestaan' signaal geven.
        */
    }
    
    dependency from 'Tonen groen scheepvaartsein' to 
        'Kruisen Verkeersstromen'::'Passeren Scheepvaartverkeer'::'Doorlaten Scheepvaartverkeer';
}
