export interface Student {
  id?: number;
  first_name: string;
  last_name: string;
  email: string;
  age: number;
  course: string;
  year_level: number;
  gpa: number;
  enrollment_status: string;
  created_at?: Date;
}