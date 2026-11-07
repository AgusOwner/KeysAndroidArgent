.class public Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProjectHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 681
    invoke-direct {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const-string p3, "target"

    .line 866
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "extension-point"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 867
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "antlib:org.apache.tools.ant"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 868
    :cond_1
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$300()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 708
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    .line 710
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object p3

    new-instance v0, Lorg/apache/tools/ant/Location;

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/Target;->setLocation(Lorg/apache/tools/ant/Location;)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 723
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    const-string v4, "basedir"

    const/4 v5, 0x1

    if-ge v1, v3, :cond_8

    .line 724
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 725
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 728
    :cond_0
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "default"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "id"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v8, v5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v8, v0

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 769
    new-instance p1, Lorg/xml/sax/SAXParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected attribute \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 770
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :pswitch_0
    if-eqz v3, :cond_7

    .line 731
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 732
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v4

    if-nez v4, :cond_7

    .line 733
    invoke-virtual {p2, v3}, Lorg/apache/tools/ant/Project;->setDefault(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    if-eqz v3, :cond_7

    .line 739
    invoke-virtual {p5, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentProjectName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v2

    if-nez v2, :cond_5

    .line 742
    invoke-virtual {p2, v3}, Lorg/apache/tools/ant/Project;->setName(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2, v3, p2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 744
    :cond_5
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->isInIncludeMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 745
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 746
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v4, "USE_PROJECT_NAME_AS_TARGET_PREFIX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 747
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-static {v2}, Lorg/apache/tools/ant/ProjectHelper;->setCurrentTargetPrefix(Ljava/lang/String;)V

    :cond_6
    :goto_2
    move v2, v5

    goto :goto_3

    :pswitch_2
    if-eqz v3, :cond_7

    .line 757
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v4

    if-nez v4, :cond_7

    .line 758
    invoke-virtual {p2, v3, p2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 763
    :pswitch_3
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v4

    if-nez v4, :cond_7

    move-object p3, v3

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 775
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "ant.file."

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 777
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ant.file.type."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "url"

    if-eqz p4, :cond_a

    if-eqz v2, :cond_a

    .line 784
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 786
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object v6

    goto :goto_4

    :catch_0
    move-exception p1

    .line 788
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "failed to parse "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " as URL while looking at a duplicate project name."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 795
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object v6

    .line 799
    :goto_4
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Duplicated project name in import. Project "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " defined first in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, " and again in "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 800
    invoke-virtual {p2, p4, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :cond_a
    if-eqz v2, :cond_c

    .line 806
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_b

    .line 808
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p4

    .line 807
    invoke-virtual {p2, p1, p4}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "file"

    .line 809
    invoke-virtual {p2, v0, p1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 811
    :cond_b
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object p4

    if-eqz p4, :cond_c

    .line 813
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object p4

    invoke-virtual {p4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p4

    .line 812
    invoke-virtual {p2, p1, p4}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2, v0, v3}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_c
    :goto_5
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 823
    :cond_d
    invoke-virtual {p2, v4}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 824
    invoke-virtual {p2, v4}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    if-nez p3, :cond_f

    .line 828
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileParent()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_6

    .line 831
    :cond_f
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 832
    invoke-virtual {p2, p3}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_6

    .line 834
    :cond_10
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p1

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileParent()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->setBaseDir(Ljava/io/File;)V

    :goto_6
    const-string p1, ""

    .line 839
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/apache/tools/ant/Project;->addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 840
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x13d33fe4 -> :sswitch_3
        0xd1b -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
