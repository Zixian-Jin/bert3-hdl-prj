import os


def add_conditional_compliation(sv_path, macro_name: str):
    '''
        Original text:

            initial begin
                $readmemh("XXX.dat", ram);
            end
            
        Modified text:
        
            `ifdef <macro_name>
                initial begin
                    $readmemh("XXX.dat", ram);
                end
            `endif
    '''
    
    with open(sv_path, 'r') as f:
        lines = f.readlines()
        
    target_line_id = 0
    
    for i in range(len(lines)):
        line = lines[i]
        if 'initial begin' in line:
            target_line_id = i
            break
        
    # insert `ifdef`
    lines.insert(target_line_id, f'  `ifdef {macro_name}\n')
    # insert `endif`
    lines.insert(target_line_id+3+1, f'  `endif\n')
    
    with open(sv_path, 'w') as f:
        f.writelines(lines)



def main():
    count = 0
    root_dir = './../rtl/'
    for sv_name in os.listdir(root_dir):
        if sv_name.endswith('_source.sv'):
            sv_path = os.path.join(root_dir, sv_name)
            add_conditional_compliation(sv_path, 'USE_REAL_DAT')
            print(f'Modified {sv_path}')
            count += 1
    print(f'Successfully modified {count} SV files.')
    
    
if __name__ == '__main__':
    main()

