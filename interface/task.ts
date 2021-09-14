export interface Task {

    taskId: number;
    taskName: string;
    phaseName: string;
    taskDescription: string;
    startDate: string;
    endDate: string;
    taskEquipment: string;
}

export class Task_Status {
    Task_Status_ID!: number;
    Description!: string;
    Comments!:string;}
