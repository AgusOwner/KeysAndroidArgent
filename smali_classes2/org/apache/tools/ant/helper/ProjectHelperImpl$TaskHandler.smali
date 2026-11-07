.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskHandler"
.end annotation


# instance fields
.field private container:Lorg/apache/tools/ant/TaskContainer;

.field private parentWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

.field private target:Lorg/apache/tools/ant/Target;

.field private task:Lorg/apache/tools/ant/Task;

.field private wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/TaskContainer;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V
    .locals 0

    .line 708
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    const/4 p1, 0x0

    .line 687
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 709
    iput-object p3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->container:Lorg/apache/tools/ant/TaskContainer;

    .line 710
    iput-object p4, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->parentWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 711
    iput-object p5, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->target:Lorg/apache/tools/ant/Target;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 765
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText([CII)V

    return-void
.end method

.method public init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 732
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :catch_0
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    .line 739
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 741
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 743
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    new-instance v0, Lorg/apache/tools/ant/Location;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 744
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    invoke-static {p1, v0, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$800(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Ljava/lang/Object;Lorg/xml/sax/AttributeList;)V

    .line 746
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 747
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->container:Lorg/apache/tools/ant/TaskContainer;

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/TaskContainer;->addTask(Lorg/apache/tools/ant/Task;)V

    .line 748
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->init()V

    .line 749
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getRuntimeConfigurableWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 750
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttributes(Lorg/xml/sax/AttributeList;)V

    .line 751
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->parentWrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    if-eqz p1, :cond_1

    .line 752
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    instance-of v0, v0, Lorg/apache/tools/ant/TaskContainer;

    if-eqz v0, :cond_0

    .line 784
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    move-object v4, v1

    check-cast v4, Lorg/apache/tools/ant/TaskContainer;

    iget-object v5, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v6, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->target:Lorg/apache/tools/ant/Target;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/TaskContainer;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto :goto_0

    .line 787
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;

    iget-object v8, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v10, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->task:Lorg/apache/tools/ant/Task;

    iget-object v11, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v12, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TaskHandler;->target:Lorg/apache/tools/ant/Target;

    move-object v7, v0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :goto_0
    return-void
.end method
