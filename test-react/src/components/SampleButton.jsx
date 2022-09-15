import styles from "./SampleButton.module.scss";

function SampleButton({title}) {
  return (
    <div className={styles.buttonMain}>
      <span className={styles.buttonTitle}>{title}</span>
    </div>
  );
}

export default SampleButton;
