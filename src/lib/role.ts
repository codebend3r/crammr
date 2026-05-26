import type { User } from "@supabase/supabase-js";

export type Role = "admin" | "regular" | "trial";

export function getRole(user: User | null | undefined): Role {
  if (!user) return "regular";
  const role = user.app_metadata?.role;
  if (role === "admin" || role === "trial") return role;
  return "regular";
}
