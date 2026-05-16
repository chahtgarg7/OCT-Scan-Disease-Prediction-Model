"use server"
import { createClient } from '@supabase/supabase-js'

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
)

export async function submitResponse(formData: FormData) {
  const data = {
    name: formData.get('name'),
    email: formData.get('email'),
    course: formData.get('course'),
  }

  const { error } = await supabase.from('students').insert([data])
  
  if (error) throw new Error("Failed to save response")
  return { success: true }
}