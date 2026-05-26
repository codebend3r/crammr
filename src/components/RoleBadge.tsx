import type { Role } from "@/lib/role";
import styles from "@/components/RoleBadge.module.css";

type Props = {
  role: Role;
};

const LABEL: Record<Role, string> = {
  admin: "Admin",
  regular: "Regular",
  trial: "Trial",
};

export function RoleBadge({ role }: Props) {
  if (role === "regular") return null;
  return (
    <span
      className={styles.badge}
      data-role={role}
      title={`${LABEL[role]} account`}
    >
      {LABEL[role]}
    </span>
  );
}
