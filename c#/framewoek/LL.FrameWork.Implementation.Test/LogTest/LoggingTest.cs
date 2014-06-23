﻿using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using LL.FrameWork.Impl.Infrastructure.Logging.TraceSourceImpl;
using LL.FrameWork.Core.Infrastructure.Logging;

namespace LL.FrameWork.Impl.Test.LogTest
{
    [TestClass]
    public class LoggingTest
    {
        #region Class Initialize

        [ClassInitialize()]
        public static void ClassInitialze(TestContext context)
        {
            // Initialize default log factory
            LoggerFactory.SetCurrent(new TraceSourceLogFactory());
        }

        #endregion

        [TestMethod]
        public void LogInfo_Test()
        {
            //Arrange
            ILogger log = LoggerFactory.CreateLog();

            //Act
            log.LogInfo("{0}", "the info message"); 
        }
    }
}
