import { PhaseComponent } from './../phase/phase/phase.component';
export class Project {

    Project_ID!: number;
    Project_Status_ID!: string;
    Project_Name!: string;
    Project_Description!: string;
    Start_Date!: string;
    End_Date!: string;
    Site_Name!: string;
    Site_Address!: string;
    id!: number;
    Phase_ID!:  number;

}

export class Project_Status {
    Project_Status_ID!: number;
    Description!: string;
    Comments!:string;
}

export class Phase{
    Phase_ID!: number;
    Phase_Status_ID!: number;
    Phase_Name!: string;
    Phase_Description!: string;
    Start_Date!: string;
    End_Date!: string;
}

export class Phase_Status {
    Phase_Status_ID!: number;
    Status_Type!: string;
 
}


