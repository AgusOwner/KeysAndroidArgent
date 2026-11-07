.class public Lorg/apache/tools/ant/types/FilterChain;
.super Lorg/apache/tools/ant/types/DataType;
.source "FilterChain.java"


# instance fields
.field private filterReaders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/types/FilterChain;
    .locals 1

    .line 417
    const-class v0, Lorg/apache/tools/ant/types/FilterChain;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/FilterChain;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/filters/ChainableReader;)V
    .locals 1

    .line 391
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 395
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addClassConstants(Lorg/apache/tools/ant/filters/ClassConstants;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addContainsRegex(Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;)V
    .locals 1

    .line 300
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addDeleteCharacters(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addEscapeUnicode(Lorg/apache/tools/ant/filters/EscapeUnicode;)V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addExpandProperties(Lorg/apache/tools/ant/filters/ExpandProperties;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addFilterReader(Lorg/apache/tools/ant/types/AntFilterReader;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addHeadFilter(Lorg/apache/tools/ant/filters/HeadFilter;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addIgnoreBlank(Lorg/apache/tools/ant/filters/TokenFilter$IgnoreBlank;)V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addLineContains(Lorg/apache/tools/ant/filters/LineContains;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addLineContainsRegExp(Lorg/apache/tools/ant/filters/LineContainsRegExp;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addPrefixLines(Lorg/apache/tools/ant/filters/PrefixLines;)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addReplaceRegex(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;)V
    .locals 1

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addReplaceString(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addReplaceTokens(Lorg/apache/tools/ant/filters/ReplaceTokens;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addStripJavaComments(Lorg/apache/tools/ant/filters/StripJavaComments;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addStripLineBreaks(Lorg/apache/tools/ant/filters/StripLineBreaks;)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addStripLineComments(Lorg/apache/tools/ant/filters/StripLineComments;)V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addSuffixLines(Lorg/apache/tools/ant/filters/SuffixLines;)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addTabsToSpaces(Lorg/apache/tools/ant/filters/TabsToSpaces;)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addTailFilter(Lorg/apache/tools/ant/filters/TailFilter;)V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addTokenFilter(Lorg/apache/tools/ant/filters/TokenFilter;)V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public addTrim(Lorg/apache/tools/ant/filters/TokenFilter$Trim;)V
    .locals 1

    .line 327
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V

    .line 331
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 402
    monitor-exit p0

    return-void

    .line 404
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    .line 407
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 408
    instance-of v2, v1, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_2

    .line 409
    check-cast v1, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v1, p1, p2}, Lorg/apache/tools/ant/types/FilterChain;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 412
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/FilterChain;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFilterReaders()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lorg/apache/tools/ant/types/FilterChain;->getRef()Lorg/apache/tools/ant/types/FilterChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/FilterChain;->getFilterReaders()Ljava/util/Vector;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->dieOnCircularReference()V

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    return-object v0
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterChain;->filterReaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/FilterChain;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method
