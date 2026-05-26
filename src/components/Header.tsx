import { Link } from "wouter";
import { Lock } from "lucide-react";
import { useAuthStore } from "@/store/authStore";
import { Button } from "@/components/Button";
import { ThemeToggle } from "@/components/ThemeToggle";
import styles from "@/components/Header.module.css";

export function Header() {
  const user = useAuthStore((s) => s.user);
  const signOut = useAuthStore((s) => s.signOut);

  return (
    <header className={styles.header}>
      <Link href="/" className={styles.brand}>
        <Lock size={18} />
        <span>Locked In</span>
      </Link>
      <div className={styles.right}>
        <ThemeToggle />
        {user ? (
          <>
            <span className={styles.email}>{user.email}</span>
            <Button variant="ghost" onClick={() => signOut()}>
              Sign out
            </Button>
          </>
        ) : null}
      </div>
    </header>
  );
}
