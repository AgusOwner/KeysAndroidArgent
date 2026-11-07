.class public abstract Lorg/apache/tools/ant/taskdefs/MatchingTask;
.super Lorg/apache/tools/ant/Task;
.source "MatchingTask.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/SelectorContainer;


# instance fields
.field protected fileset:Lorg/apache/tools/ant/types/FileSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    return-void
.end method


# virtual methods
.method public XsetIgnore(Ljava/lang/String;)V
    .locals 3

    const-string v0, "The ignore attribute is deprecated.Please use the excludes attribute."

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->log(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public XsetItems(Ljava/lang/String;)V
    .locals 3

    const-string v0, "The items attribute is deprecated. Please use the includes attribute."

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->log(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    const-string v0, "*"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "."

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/**"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object p1

    const-string v0, "**"

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setName(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->add(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addAnd(Lorg/apache/tools/ant/types/selectors/AndSelector;)V

    return-void
.end method

.method public addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addContains(Lorg/apache/tools/ant/types/selectors/ContainsSelector;)V

    return-void
.end method

.method public addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addContainsRegexp(Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;)V

    return-void
.end method

.method public addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addCustom(Lorg/apache/tools/ant/types/selectors/ExtendSelector;)V

    return-void
.end method

.method public addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDate(Lorg/apache/tools/ant/types/selectors/DateSelector;)V

    return-void
.end method

.method public addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDepend(Lorg/apache/tools/ant/types/selectors/DependSelector;)V

    return-void
.end method

.method public addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDepth(Lorg/apache/tools/ant/types/selectors/DepthSelector;)V

    return-void
.end method

.method public addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addDifferent(Lorg/apache/tools/ant/types/selectors/DifferentSelector;)V

    return-void
.end method

.method public addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addFilename(Lorg/apache/tools/ant/types/selectors/FilenameSelector;)V

    return-void
.end method

.method public addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addMajority(Lorg/apache/tools/ant/types/selectors/MajoritySelector;)V

    return-void
.end method

.method public addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addModified(Lorg/apache/tools/ant/types/selectors/modifiedselector/ModifiedSelector;)V

    return-void
.end method

.method public addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addNone(Lorg/apache/tools/ant/types/selectors/NoneSelector;)V

    return-void
.end method

.method public addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addNot(Lorg/apache/tools/ant/types/selectors/NotSelector;)V

    return-void
.end method

.method public addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addOr(Lorg/apache/tools/ant/types/selectors/OrSelector;)V

    return-void
.end method

.method public addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector;)V

    return-void
.end method

.method public addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addSelector(Lorg/apache/tools/ant/types/selectors/SelectSelector;)V

    return-void
.end method

.method public addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addSize(Lorg/apache/tools/ant/types/selectors/SizeSelector;)V

    return-void
.end method

.method public addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->addType(Lorg/apache/tools/ant/types/selectors/TypeSelector;)V

    return-void
.end method

.method public appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method

.method public createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createExclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createExcludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createInclude()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createIncludesFile()Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public createPatternSet()Lorg/apache/tools/ant/types/PatternSet;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->createPatternSet()Lorg/apache/tools/ant/types/PatternSet;

    move-result-object v0

    return-object v0
.end method

.method protected getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDir(Ljava/io/File;)V

    .line 194
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object p1

    return-object p1
.end method

.method protected final getImplicitFileSet()Lorg/apache/tools/ant/types/FileSet;
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    return-object v0
.end method

.method public getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object p1

    return-object p1
.end method

.method public hasSelectors()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->hasSelectors()Z

    move-result v0

    return v0
.end method

.method public selectorCount()I
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->selectorCount()I

    move-result v0

    return v0
.end method

.method public selectorElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/ant/types/selectors/FileSelector;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FileSet;->selectorElements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public setCaseSensitive(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setCaseSensitive(Z)V

    return-void
.end method

.method public setDefaultexcludes(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setDefaultexcludes(Z)V

    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setExcludes(Ljava/lang/String;)V

    return-void
.end method

.method public setExcludesfile(Ljava/io/File;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setExcludesfile(Ljava/io/File;)V

    return-void
.end method

.method public setFollowSymlinks(Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setFollowSymlinks(Z)V

    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setIncludes(Ljava/lang/String;)V

    return-void
.end method

.method public setIncludesfile(Ljava/io/File;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setIncludesfile(Ljava/io/File;)V

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MatchingTask;->fileset:Lorg/apache/tools/ant/types/FileSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FileSet;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method
