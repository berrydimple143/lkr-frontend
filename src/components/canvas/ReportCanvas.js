
import React from "react";
import Report from "@/components/printables/Report";

const ReportCanvas = React.forwardRef((props, ref) => {
  return (
    <div ref={ref}>
        <Report 
            chosenClient={props.chosenClient} 
            formatCurrency={props.formatCurrency}
            formatDate={props.formatDate}
        />
    </div>
  );
});

ReportCanvas.displayName = 'LKRealty';

export default ReportCanvas;
