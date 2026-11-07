.class public Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;
.super Lorg/apache/tools/ant/types/FileSet;
.source "LibFileSet.java"


# instance fields
.field private includeImpl:Z

.field private includeURL:Z

.field private urlBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    return-void
.end method


# virtual methods
.method getUrlBase()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->urlBase:Ljava/lang/String;

    return-object v0
.end method

.method isIncludeImpl()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->includeImpl:Z

    return v0
.end method

.method isIncludeURL()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->includeURL:Z

    return v0
.end method

.method public setIncludeImpl(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->includeImpl:Z

    return-void
.end method

.method public setIncludeUrl(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->includeURL:Z

    return-void
.end method

.method public setUrlBase(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/LibFileSet;->urlBase:Ljava/lang/String;

    return-void
.end method
