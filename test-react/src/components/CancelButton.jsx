import styles from "./CancelButton.module.scss";

function CancelButton({title}) {
  return (
    <div className={styles.buttonMain}>
      <span className={styles.buttonTitle}>{title}</span>
    </div>
  );
}

export default CancelButton;
