/*
*所有关于cmc_pdms_project_main类的业务代码接口应在此处编写
*/
using PDMS.Core.BaseProvider;
using PDMS.Entity.DomainModels;
using PDMS.Core.Utilities;
using System.Linq.Expressions;
namespace PDMS.Project.IServices
{
    public partial interface Icmc_pdms_project_mainService
    {

        public WebResponseContent loadDate(SaveModel saveModel);

        public WebResponseContent eoFee(SaveModel saveModel);

        public int isLoadDate(SaveModel saveModel);

        public WebResponseContent closeProject(object obj);

        public int isLoaded(SaveModel saveModel);

        public WebResponseContent cancelProject(object obj);
    }
 }
