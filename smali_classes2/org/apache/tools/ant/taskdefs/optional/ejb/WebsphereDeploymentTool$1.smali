.class Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$1;
.super Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
.source "WebsphereDeploymentTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;->getWebsphereDescriptorHandler(Ljava/io/File;)Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;Lorg/apache/tools/ant/Task;Ljava/io/File;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool$1;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/WebsphereDeploymentTool;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;-><init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected processElement()V
    .locals 0

    return-void
.end method
