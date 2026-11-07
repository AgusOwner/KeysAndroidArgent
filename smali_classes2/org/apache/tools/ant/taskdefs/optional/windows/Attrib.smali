.class public Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;
.super Lorg/apache/tools/ant/taskdefs/ExecuteOn;
.source "Attrib.java"


# static fields
.field private static final ATTR_ARCHIVE:Ljava/lang/String; = "A"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "H"

.field private static final ATTR_READONLY:Ljava/lang/String; = "R"

.field private static final ATTR_SYSTEM:Ljava/lang/String; = "S"

.field private static final SET:Ljava/lang/String; = "+"

.field private static final UNSET:Ljava/lang/String; = "-"


# instance fields
.field private haveAttr:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->haveAttr:Z

    const-string v1, "attrib"

    .line 47
    invoke-super {p0, v1}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setExecutable(Ljava/lang/String;)V

    .line 48
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->setParallel(Z)V

    return-void
.end method

.method private addArg(ZLjava/lang/String;)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getSignString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->haveAttr:Z

    return-void
.end method

.method private static getSignString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "+"

    goto :goto_0

    :cond_0
    const-string p0, "-"

    :goto_0
    return-object p0
.end method

.method private haveAttr()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->haveAttr:Z

    return v0
.end method


# virtual methods
.method protected checkConfiguration()V
    .locals 3

    .line 98
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->haveAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->checkConfiguration()V

    return-void

    .line 99
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing attribute parameter"

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected isValidOs()Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getOs()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getOsFamily()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "windows"

    .line 187
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteOn;->isValidOs()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setAddsourcefile(Z)V
    .locals 2

    .line 136
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the addsourcefile attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setArchive(Z)V
    .locals 1

    const-string v0, "A"

    .line 74
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->addArg(ZLjava/lang/String;)V

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 2

    .line 124
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the command attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 2

    .line 113
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the executable attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1

    .line 56
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setFile(Ljava/io/File;)V

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->addFileset(Lorg/apache/tools/ant/types/FileSet;)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    const-string v0, "H"

    .line 90
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->addArg(ZLjava/lang/String;)V

    return-void
.end method

.method public setMaxParallel(I)V
    .locals 2

    .line 174
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the maxparallel attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setParallel(Z)V
    .locals 2

    .line 161
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the parallel attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setReadonly(Z)V
    .locals 1

    const-string v0, "R"

    .line 66
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->addArg(ZLjava/lang/String;)V

    return-void
.end method

.method public setSkipEmptyFilesets(Z)V
    .locals 2

    .line 148
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t support the skipemptyfileset attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setSystem(Z)V
    .locals 1

    const-string v0, "S"

    .line 82
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/windows/Attrib;->addArg(ZLjava/lang/String;)V

    return-void
.end method
