﻿namespace FireFiddler
{
    partial class UI
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.cb_disabled = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btn_AddRule = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cb_disabled
            // 
            this.cb_disabled.AutoSize = true;
            this.cb_disabled.Location = new System.Drawing.Point(15, 0);
            this.cb_disabled.Name = "cb_disabled";
            this.cb_disabled.Size = new System.Drawing.Size(72, 16);
            this.cb_disabled.TabIndex = 0;
            this.cb_disabled.Text = "是否启用";
            this.cb_disabled.UseVisualStyleBackColor = true;
            this.cb_disabled.CheckedChanged += new System.EventHandler(this.cb_disabled_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btn_AddRule);
            this.groupBox1.Controls.Add(this.cb_disabled);
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(995, 156);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            // 
            // btn_AddRule
            // 
            this.btn_AddRule.Location = new System.Drawing.Point(12, 22);
            this.btn_AddRule.Name = "btn_AddRule";
            this.btn_AddRule.Size = new System.Drawing.Size(75, 23);
            this.btn_AddRule.TabIndex = 1;
            this.btn_AddRule.Text = "添加规则";
            this.btn_AddRule.UseVisualStyleBackColor = true;
            this.btn_AddRule.Click += new System.EventHandler(this.btn_AddRule_Click);
            // 
            // UI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox1);
            this.Name = "UI";
            this.Size = new System.Drawing.Size(1001, 655);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.CheckBox cb_disabled;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_AddRule;


    }
}
