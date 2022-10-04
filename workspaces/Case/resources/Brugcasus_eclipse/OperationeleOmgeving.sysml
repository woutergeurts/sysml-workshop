package 'OperationeleOmgeving' {
    
    import 'Verkeer definities'::*;
    import 'Missiesystemen definitie'::*;
    
    package 'Mensgemaakte Systemen'{
        doc /* Door mensen gemaakte systemen, die een 
        relatie hebben met het SOI */
        part def t_Snelweg {
            in  item voertuig_in  : t_voertuig;
            out item voertuig_uit : t_voertuig;
        }    
    }   
    
    package 'Natuurlijke Omgevingselementen'{
        doc /* Natuurlijke omgevingselementen - of factoren
        voor het systeem, die niet door de mens zijn gemaakt. */
        part def t_Waterlichaam {
            in  item vaartuig_in  : t_vaartuig;
            out item vaartuig_uit : t_vaartuig;
        }
    }
    
    package 'Geinduceerde Omgevingselementen'{
        doc /* Fenomenen die optreden als natuurlijke omgevingselementen interacteren
        met mensgemaakte systemen (bijv. bliksem, luchttemperatuur, lichtniveau) */
            
    }
    
    part 'Operationele Omgeving' {
        part rechts:         'Natuurlijke Omgevingselementen'::t_Waterlichaam;
        part links:          'Natuurlijke Omgevingselementen'::t_Waterlichaam;
        part boven:          'Mensgemaakte Systemen'::t_Snelweg;
        part onder:          'Mensgemaakte Systemen'::t_Snelweg;
        part brug: t_Brug;
        
        connection def t_wegaansluiting {
            end: 'Mensgemaakte Systemen'::t_Snelweg;
            end: t_Brug;
        }

        connection def t_vaarwegaansluiting {
            end: 'Natuurlijke Omgevingselementen'::t_Waterlichaam;
            end: t_Brug;
        }
        
        connection: t_wegaansluiting     connect onder  to brug;
        connection: t_wegaansluiting     connect boven  to brug;
        connection: t_vaarwegaansluiting connect rechts to brug;
        connection: t_vaarwegaansluiting connect links  to brug;
        
        flow of t_voertuig from boven.voertuig_uit to brug.voertuig_in;
        flow of t_voertuig from brug.voertuig_uit to boven.voertuig_in;
        flow of t_voertuig from onder.voertuig_uit to brug.voertuig_in;
        flow of t_voertuig from brug.voertuig_uit to onder.voertuig_in;
        
        flow of t_vaartuig from rechts.vaartuig_uit to brug.vaartuig_in;
        flow of t_vaartuig from rechts.vaartuig_in to brug.vaartuig_uit;
        flow of t_vaartuig from links.vaartuig_uit to brug.vaartuig_in;
        flow of t_vaartuig from links.vaartuig_in to brug.vaartuig_uit;
    }
}
