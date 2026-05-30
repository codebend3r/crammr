import { Github } from "lucide-react";
import styles from "@/components/Footer.module.css";

export function Footer() {
  return (
    <footer className={styles.footer}>
      <span>CJ Rivas</span>
      <span className={styles.dot} aria-hidden>
        ·
      </span>
      <a
        href="https://github.com/Codebend3r"
        target="_blank"
        rel="noreferrer"
        className={styles.link}
        aria-label="GitHub profile"
      >
        <Github size={14} />
        <span>GitHub</span>
      </a>
      <span className={styles.dot} aria-hidden>
        ·
      </span>
      <span>v{__APP_VERSION__}</span>
    </footer>
  );
}
