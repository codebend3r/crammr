import styles from "@/components/StubPage.module.css";

type Props = {
  title: string;
  description?: string;
};

export function StubPage({ title, description }: Props) {
  return (
    <div className={styles.page}>
      <h1 className={styles.heading}>{title}</h1>
      <p className={styles.body}>{description ?? "Coming soon."}</p>
    </div>
  );
}
