.class public Lorg/apache/tools/ant/taskdefs/Filter;
.super Lorg/apache/tools/ant/Task;
.source "Filter.java"


# instance fields
.field private filtersFile:Ljava/io/File;

.field private token:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 80
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both token and value parameters, or only a filtersFile parameter is required"

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/types/FilterSet;->addFilter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 90
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->readFilters()V

    :cond_5
    return-void
.end method

.method protected readFilters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading filters from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Filter;->log(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Filter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getGlobalFilterSet()Lorg/apache/tools/ant/types/FilterSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FilterSet;->readFiltersFromFile(Ljava/io/File;)V

    return-void
.end method

.method public setFiltersfile(Ljava/io/File;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->filtersFile:Ljava/io/File;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->token:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Filter;->value:Ljava/lang/String;

    return-void
.end method
