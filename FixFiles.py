import os
import shutil

def CopyInstructorFiles(activities, a, day, daypath, activityCount, ignore):
    print('   Copy Instructor')
    src = os.path.join(activities, a, "Solved")
    #get file name(s)
    if os.path.exists(src):
        for f in os.listdir(src):
            if f not in ignore:
                srcFile = os.path.join(src, f)
                tfs1 = ('000' + str(day))
                tfs1 = tfs1[(len(tfs1)-3):(len(tfs1))]
                tfs2 = '00' + str(activityCount)
                tfs2 = tfs2[(len(tfs2)-2):(len(tfs2))]
                tfs = tfs1 + '-' + tfs2 + '.1 - INS - ' + f
                tgtFile = os.path.join(daypath, tfs)
                print(f'      Copy {srcFile} to {tgtFile}')
                try:
                    shutil.copyfile(srcFile, tgtFile)
                except:
                    print('         -- Failed')

def CopyStudentFiles(activities, a, day, daypath, activityCount, ignore):
    print('   Copy Student')

    # copy the readme.md
    f = "readme.md"
    src = os.path.join(activities, a)
    tfs1 = ('000' + str(day))
    tfs1 = tfs1[(len(tfs1)-3):(len(tfs1))]
    tfs2 = '00' + str(activityCount)
    tfs2 = tfs2[(len(tfs2)-2):(len(tfs2))]
    tfs = tfs1 + '-' + tfs2 + ' - ' + f
    srcFile = os.path.join(src, f)
    tgtFile = os.path.join(daypath, tfs)
    print(f'      Copy {srcFile} to {tgtFile}')
    try:
        shutil.copyfile(srcFile, tgtFile)
    except:
        print('         -- Failed')

    # copy the unsolved files
    src = os.path.join(activities, a, "Unsolved")
    #get file name(s)
    if os.path.exists(src):
        for f in os.listdir(src):
            if f not in ignore:
                srcFile = os.path.join(src, f)
                tfs1 = ('000' + str(day))
                tfs1 = tfs1[(len(tfs1)-3):(len(tfs1))]
                tfs2 = '00' + str(activityCount)
                tfs2 = tfs2[(len(tfs2)-2):(len(tfs2))]
                tfs = tfs1 + '-' + tfs2 + ' - STU - ' + f
                tgtFile = os.path.join(daypath, tfs)
                print(f'      Copy {srcFile} to {tgtFile}')
                try:
                    shutil.copyfile(srcFile, tgtFile)
                except:
                    print('         -- Failed')


base = os.path.join('\\','Users','skingaby','source','DataViz')
source = os.path.join(base, 'DataViz-Lesson-Plans','01-Lesson-Plans')
classes = os.path.join(base, "Classes")
resources = os.path.join(classes, "Resources")
ignore = ['.gitkeep', 'Resources', 'Output', 'config.py']
day = 0
if os.path.exists(classes): 
    shutil.rmtree(classes)
os.mkdir(classes)
os.mkdir(resources)
for d in os.listdir(source):
    if day > 25:
        break
    for i in range(1,4):
        if not os.path.exists(os.path.join(source, d, str(i))):
            break
        day += 1
        ds = ('000' + str(day))
        ds = 'Day' + ds[(len(ds)-3):(len(ds))] + '-' + d + '-' + str(i)
        daypath = os.path.join(classes, ds)
        if not os.path.exists(daypath):
            os.mkdir(daypath)
        activities = os.path.join(source, d, str(i), 'Activities')
        if not os.path.exists(activities):
            break
        activityCount = 0
        for a in os.listdir(activities):
            activityCount += 1
            print(a, a[3:6])
            src = os.path.join(activities, a, "Resources")
            if os.path.exists(src):
                print('   Copy Resources') 
                for f in os.listdir(src):
                    if f in ignore:
                        break
                    srcFile = os.path.join(src, f)
                    tgtFile = os.path.join(resources, f)
                    print(f'      Copy {srcFile} to {tgtFile}')
                    try:
                        shutil.copyfile(srcFile, tgtFile)
                    except:
                        print('         -- Failed')
            if a[3:6] != "Ins":
                CopyStudentFiles(activities, a, day, daypath, activityCount, ignore)
            CopyInstructorFiles(activities, a, day, daypath, activityCount, ignore)


